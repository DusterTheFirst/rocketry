use nalgebra::Vector3;

pub mod bno055;

#[repr(C)]
#[derive(Debug)]
#[no_mangle]
pub struct Vec3 {
    x: f64,
    y: f64,
    z: f64,
}

impl Into<Vector3<f64>> for Vec3 {
    fn into(self) -> Vector3<f64> {
        Vector3::new(self.x, self.y, self.z)
    }
}
