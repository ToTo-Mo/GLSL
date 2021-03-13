#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;

vec3 red(){
	return vec3(1.,0.,0.);
}

vec3 green(){
	return vec3(0.,1.,0.);
}

void main() {
	gl_FragColor =vec4(1.0, 0.4196, 0.4196, 1.0);
}
