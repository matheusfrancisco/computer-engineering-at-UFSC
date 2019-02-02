#version 120

uniform sampler2D shadowTexture;

varying vec3 normal;
varying vec3 vertex;
varying vec4 shadowCoord;

void main (void)
{

   vec3 theNormal = normal;
   
   vec3 L = normalize(gl_LightSource[0].position.xyz - vertex);   
   vec3 E = normalize(-vertex); // we are in Eye Coordinates, so EyePos is (0,0,0)  
   vec3 R = normalize(-L + 2.0 * dot(L,theNormal) * theNormal);
   
   vec3 H = normalize(L + E);
   
   float bias = 0.005*tan(acos(dot(L,theNormal))); // cosTheta is dot( n,l ), clamped between 0 and 1
   bias = clamp(bias, 0,0.01);
   
   float intensity = 1.0;
      
   if (texture2D(shadowTexture, shadowCoord.st).z < shadowCoord.z - bias)
     intensity = 0.5;
    
   //calculate Ambient Term:  
   vec4 Iamb = gl_FrontLightProduct[0].ambient;    

   //calculate Diffuse Term:
   vec4 diffProduct = gl_LightSource[0].diffuse * gl_FrontMaterial.diffuse; // gl_FrontLightProduct[0].diffuse  
   vec4 Idiff = diffProduct * max(dot(theNormal,L), 0.0);
   Idiff = clamp(Idiff, 0.0, 1.0);     
   
   // calculate Specular Term:
   vec4 specProduct = gl_LightSource[0].specular * gl_FrontMaterial.specular; //gl_FrontLightProduct[0].specular
   float shininess = gl_FrontMaterial.shininess;
   vec4 Ispec = specProduct
               // * pow(max(dot(R,E),0.0),10.0);//gl_FrontMaterial.shininess);
                * pow(max(dot(H,theNormal),0.0),shininess);
   Ispec = clamp(Ispec, 0.0, 1.0); 

   // write Total Color:  
   vec4 color = Iamb + intensity * (Idiff + Ispec);
     
   gl_FragColor = color;
   
}
          