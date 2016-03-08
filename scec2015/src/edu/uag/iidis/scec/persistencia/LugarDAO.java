package edu.uag.iidis.scec.persistencia;

import org.hibernate.*;
import org.hibernate.type.*;
import org.hibernate.criterion.Example;
//import org.hibernate.classic.*;


import edu.uag.iidis.scec.excepciones.ExcepcionInfraestructura;
import edu.uag.iidis.scec.modelo.Lugar;
import edu.uag.iidis.scec.persistencia.hibernate.HibernateUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.util.Collection;
import java.util.List;


public class LugarDAO {

    private Log log = LogFactory.getLog(LugarDAO.class);

    public LugarDAO() {
    }


    public Lugar buscarPorId(Long id, boolean bloquear)
            throws ExcepcionInfraestructura {

        Lugar lugar = null;

        if (log.isDebugEnabled()) {
            log.debug(">buscarPorID(" + id + ", " + bloquear + ")");
        }

        try {
            if (bloquear) {
                lugar = (Lugar)HibernateUtil.getSession()
                                                .load(Lugar.class,
                                                      id,
                                                      LockMode.UPGRADE);
            } else {
                lugar = (Lugar)HibernateUtil.getSession()
                                                .load(Lugar.class,
                                                      id);
            }
        } catch (HibernateException ex) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException");
            }

            throw new ExcepcionInfraestructura(ex);
        }
        return lugar;
    }


    public Collection buscarTodos()
            throws ExcepcionInfraestructura {

        Collection lugares;

        if (log.isDebugEnabled()) {
            log.debug(">buscarTodos()");
        }

        try {
            lugares = HibernateUtil.getSession()
                                    .createCriteria(Lugar.class)
                                    .list();
        } catch (HibernateException e) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException");
            }
            throw new ExcepcionInfraestructura(e);
        }
        return lugares;
    }


    public Collection buscarPorEjemplo(Lugar lugar)
            throws ExcepcionInfraestructura {


        Collection lugares;

        if (log.isDebugEnabled()) {
            log.debug(">buscarPorEjemplo()");
        }

        try {
            Criteria criteria = HibernateUtil.getSession()
                                             .createCriteria(Lugar.class);
            lugares = criteria.add(Example.create(lugar)).list();
        } catch (HibernateException e) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException");
            }
            throw new ExcepcionInfraestructura(e);
        }
        return lugares;
    }


    public void hazPersistente(Lugar lugar)
            throws ExcepcionInfraestructura {

        if (log.isDebugEnabled()) {
            log.debug(">hazPersistente(lugar)");
        }

        try {
            HibernateUtil.getSession().saveOrUpdate(lugar);
        } catch (HibernateException e) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException");
            }
            throw new ExcepcionInfraestructura(e);
        }
    }


    public void hazTransitorio(Lugar lugar)
            throws ExcepcionInfraestructura {

        if (log.isDebugEnabled()) {
            log.debug(">hazTransitorio(lugar)");
        }

        try {
            HibernateUtil.getSession().delete(lugar);
        } catch (HibernateException e) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException");
            }
            throw new ExcepcionInfraestructura(e);
        }
    }

    public boolean existeLugar(String nombreLugar)
            throws ExcepcionInfraestructura {

        if (log.isDebugEnabled()) {
            log.debug(">existeLugar(nombreLugar)");
        }

        try {


//            String consultaCuentaRoles =
//            "select count(*) from Rol r where r.nombre=?";
//
 //           int resultado =
 //           ((Integer) HibernateUtil.getSession()
 //                          .find(consultaCuentaRoles,
 //                                nombreRol,
 //                                StringType.INSTANCE)
 //                          .iterator()
 //                          .next()).intValue();
// de acuerdo al nuevo formato

			String hql = "select nombre from Lugar where nombre = :nombre";

			 if (log.isDebugEnabled()) {
           		 log.debug(hql + nombreLugar);
        	}

			Query query = HibernateUtil.getSession()
										.createQuery(hql);
			if (log.isDebugEnabled()) {
           		 log.debug("<<<<<<<<< create query ok " );
        	}

			query.setParameter("nombre", nombreLugar);
			if (log.isDebugEnabled()) {
           		 log.debug("<<<<<<<<< set Parameter ok antes del query list >>>>>");
        	}
			List results = query.list();
			int resultado = results.size();
			if (log.isDebugEnabled()) {
           		 log.debug("<<<<<<<<< Result size " + resultado);
        	}
            if (resultado == 0) {
               return false;
            }

            return true;

        } catch (HibernateException ex) {
            if (log.isWarnEnabled()) {
                log.warn("<HibernateException *******************");
            }
            throw new ExcepcionInfraestructura(ex);
        }
    }


}
