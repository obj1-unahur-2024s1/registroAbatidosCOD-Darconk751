object registroAbatidosCOD {
	const registro = [[43, 20221231], [18, 20230101], [49, 20230105], [62, 20230106], [33, 20230107], [39, 20230108]]
	
	method registro() = registro
	method agregarRegistroDeDiasYAbatidos(cantidadDeAbatidos, dia){
		registro.add([cantidadDeAbatidos, dia])
	}
	method cantidadDeDiasRegistrados() = registro.size()
	method estaVacioElRegistro() = registro.isEmpty()
	method algunDiaAbatio(cantidad) = registro.any({cantidadDeAbatidos => cantidadDeAbatidos.get(0) == cantidad})
	method primerValorDeAbatidos() = registro.first().get(0) // "get(0)" es igual a "first()"
	method ultimoValorDeAbatidos() = registro.last().get(0)
	method maximoValorDeAbatidos() = registro.max({datoDelRegistro => datoDelRegistro.get(0)}).get(0)
	method totalAbatidos() = registro.sum({datoDelRegistro => datoDelRegistro.get(0)})
	method cantidadDeAbatidosElDia(dia) = registro.get(0).get(dia)
	method ultimoValorDeAbatidosConSize() = registro.last() == registro.get(registro.size()-1)
	method abatidosSuperioresA(cantidad) = registro.filter({datoDelRegistro => datoDelRegistro.get(0) > cantidad}).map({datoDelRegistro => datoDelRegistro.get(0)})
	method valoresDeAbatidosPares() = registro.map({datoDelRegistro => datoDelRegistro.get(0)}).filter({datoDelRegistro => datoDelRegistro.even()})
	method abatidosSumando(cantidad) = registro.map({datoDelRegistro => datoDelRegistro.get(0) + cantidad})
	method abatidosEsAcotada(n1,n2) = registro.all({datoDelRegistro => datoDelRegistro.get(0).between(n1,n2)})
	method algunDiaAbatioMasDe(cantidad) = registro.any({cantidadDeAbatidos => cantidadDeAbatidos.get(0) > cantidad})
	method todosLosDiasAbatioMasDe(cantidad) = registro.all({datoDelRegistro => datoDelRegistro.get(0) > cantidad})
	method cantidadAbatidosMayorALaPrimera() = registro.count({datoDelRegistro => datoDelRegistro.get(0) > self.primerValorDeAbatidos()})
	method esCrack() = registro.sortedBy({x, y => x.get(0) < y.get(0)}) == registro
}