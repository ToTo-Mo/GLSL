#ifdef GL_ES
precision mediump float;
#endif

// uniform은 cpu에서 gpu로 정보를 전송하는 변수
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
    // gl_FragCoord : 해당 픽셀이 가진 좌표
    /*
        0,1 1,1
        ┎───┐
        │   │
        └───┘
        0,0 1,0

        gl_FragCoord는 각 좌표마다의 픽셀 값을 나타냅니다.
        즉 어떤 화면의 중앙 좌표가 250,250이라면 gl_FragCoord.xy / u_resolution.xy
        는
    */
	vec2 st = gl_FragCoord.xy/u_resolution.xy;

    vec3 color = vec3(0.);
    color = vec3(st.x ,st.y, 0);

	gl_FragColor = vec4(color,1.0);
}
