package sgh.mansilla.modelo.negocio.persona;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import sgh.mansilla.modelo.dao.AbstractDao.OrderType;
import sgh.mansilla.modelo.dao.DaoGenerico;
import sgh.mansilla.modelo.datos.persona.CaracteristicaPasajero;
import sgh.mansilla.modelo.negocio.ABMGenerico;
import sgh.mansilla.modelo.negocio.persona.CaracteristicaPasajeroABM;

@Service("caracteristicaPasajeroABM")
@Transactional
public class DefaultCaracteristicaPasajeroABM extends ABMGenerico<Integer, CaracteristicaPasajero> implements CaracteristicaPasajeroABM {

	protected final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	@Autowired
	@Qualifier("caracteristicaPasajeroDao")
	public void setDao(DaoGenerico<Integer, CaracteristicaPasajero> dao) {
		super.setDao(dao);
	}

	@Override
	public void guardar(CaracteristicaPasajero entidad) {
		super.guardar(entidad);
	}

	@Override
	protected void actualizarEntidad(CaracteristicaPasajero entidadPersistida, CaracteristicaPasajero entidadActualizada) {
		entidadPersistida.setDescripcion(entidadActualizada.getDescripcion());
	}

	@Override
	public List<CaracteristicaPasajero> listar() {
		return dao.list(true, OrderType.ASCENDING, "idCaracteristicaPasajero");
	}
}
