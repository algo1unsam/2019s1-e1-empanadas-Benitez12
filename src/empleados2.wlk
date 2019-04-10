object gimenez {
	
	var sueldoFijo = 15000
	var dinero = 0
	var deuda = 0
	
	
	//var = balance
	//method totalDinero() = balance.max(0)
	//method totalDeuda() = -balance.min(0)
	//method cobrarSueldo(){
	//	balance += self.sueldo()}
	//method gastar(cuanto){
	//	balance -= cuanto()}
	
	method sueldoFijo() { 
		return sueldoFijo
	}
	method sueldo(nuevoValor) { 
		sueldoFijo = nuevoValor
	}
	
	method cobrarSueldo(){
		if(sueldoFijo >= deuda){
			dinero = sueldoFijo - deuda 
			deuda = 0
		}
		else{
			deuda = deuda - sueldoFijo 
			dinero = 0
		}
	}
	
	method gastar(cantidad){
		if(deuda + cantidad >= dinero){
			deuda = deuda + cantidad - dinero
			dinero = 0
		}
		else{
			dinero -= (deuda + cantidad)
			deuda = 0 
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method totalDinero(){
		return dinero
	}
}

object baigorria{
	
	var sueldoFijo = 0
	var empanadasVendidas = 0
	var totalVendidas = 0
	var totalCobrado = 0
	
	method venderEmpanadas(cantidad){
		empanadasVendidas = cantidad
		totalVendidas += cantidad
		sueldoFijo = 15 * self.empanadasVendidas() 
	}
	method empanadasVendidas(){
		return totalVendidas
	}
	
	method sueldoFijo(){
		return sueldoFijo
	}
	
	method cobrarSueldo(){
		totalCobrado += self.sueldoFijo()
	}
	
	
}

object galvan{
	
	var cantidadDineroGalvan = 300000
	
	method pagarA(empleado){
		cantidadDineroGalvan -= empleado.sueldoFijo()
		empleado.cobrarSueldo()
	}
	
	
}