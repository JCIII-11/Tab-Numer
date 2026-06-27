module mathlib
    use iso_c_binding
contains

function sum_array(arr, n) result(total) bind(C, name="sum_array")

    implicit none

    integer(c_int), value :: n
    real(c_double), intent(in) :: arr(n)
    real(c_double) :: total

    integer :: i

    total = 0.0_c_double

    do i = 1, n
        total = total + arr(i)
    end do

end function

end module
