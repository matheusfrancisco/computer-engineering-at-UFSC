uniform sampler2D texture;
varying vec2 texturepos;
varying vec3 normal;
varying vec3 vertex;    

vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

void main (void)  
{ 
   vec4 textureColor = texture2D(texture, texturepos).rgba;
   vec3 hsvColor = rgb2hsv(vec3(textureColor)); 

   vec3 L = normalize(gl_LightSource[0].position.xyz - vertex);   
   vec3 E = normalize(-vertex); // we are in Eye Coordinates, so EyePos is (0,0,0)  
   vec3 R = normalize(-L + 2.0 * dot(L,normal) * normal);
   
   vec3 H = normalize(L + E);
 
   //calculate Ambient Term:  
   vec4 Iamb = gl_FrontLightProduct[0].ambient;    

   //calculate Diffuse Term:
   vec4 diffProduct = gl_LightSource[0].diffuse * textureColor * gl_FrontMaterial.diffuse; // gl_FrontLightProduct[0].diffuse  
   vec4 Idiff = diffProduct * max(dot(normal,L), 0.0);
   Idiff = clamp(Idiff, 0.0, 1.0);     
   
   // calculate Specular Term:
   vec4 specProduct = gl_LightSource[0].specular * gl_FrontMaterial.specular; //gl_FrontLightProduct[0].specular
   float shininess = 100.0;
   if (hsvColor.r < 0.5 || hsvColor.r > 0.8) {
		shininess = 10.0;
		specProduct = vec4(0.0,0.0,0.0,1.0);
   } else {
        //discard;
   } 
   vec4 Ispec = specProduct
               // * pow(max(dot(R,E),0.0),10.0);//gl_FrontMaterial.shininess);
                * pow(max(dot(H,normal),0.0),shininess);
   Ispec = clamp(Ispec, 0.0, 1.0); 

   // write Total Color:  
   //gl_FragColor = gl_FrontLightModelProduct.sceneColor + Iamb + Idiff + Ispec;
   vec4 color = Iamb + Idiff + Ispec;
  
   
   gl_FragColor = color;
   
}
          