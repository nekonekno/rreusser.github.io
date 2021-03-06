#pragma glslify: export(coth)

#pragma glslify: sinhcosh = require(./lib/sinhcosh)

vec2 coth(vec2 z) {
  z *= 2.0;
  vec2 sch = sinhcosh(z.x);
  return vec2(sch.x, -sin(z.y)) / (sch.y - cos(z.y));
}
