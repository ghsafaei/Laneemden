program mylaneemden
	!**********************************  x=theta  *****  t=ksi  ****************
	real x, dxdt, n, dt,t2,imax   
    character*50 name

        print*, 'please enter n, the polytrope index '
        read*, n
        print*, 'please enter name of results file'
        read*, name
        print*, 'please enter ksi end (ksi2=?)'
        read*, t2

        open(1,file=name,status='new')

		 
   x    = 1.0   
   dxdt = 0.0
   t    = 0.000001
   imax=t2/t
   dt = 0.0001

      do  i = 1, imax
                 dxdt = dxdt - ( 2.0*dxdt/t + x**n )*dt
                 x = x + dxdt*dt 
                 t = t + dt
                write(1,*) t,x,dxdt
 		       if (t.gt.t2 )   goto 9

      end do

                           9 continue 
 end
