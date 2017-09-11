varying vec2 vUv;
uniform sampler2D texturePosition;
varying vec3 pos;
    void main()	{
        vUv = uv;
        vec3 newPos = vec3(position.x, position.y, position.z);
        vec4 mvPosition = modelViewMatrix * vec4(position, 1.0);
        pos = newPos;
        mvPosition.z += 0.5;
        gl_Position = projectionMatrix * mvPosition;
    }
