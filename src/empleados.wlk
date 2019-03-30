object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	method sueldo() {
		return sueldo
	}
	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}
	method cobrarSueldo(){}
	method gastar(cuanto){}
	method totalDeuda(){}
	method totalDinero(){}
}
object baigorria {
	var totalCobrado=0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){
		totalCobrado+=self.sueldo()
	}
}
object galvan {
	var dinero = 300000

	method dinero() {
		return dinero
	}
	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	//empleado.cobrarSueldo()
	}
}

