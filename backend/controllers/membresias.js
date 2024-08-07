const { Membresia } = require('../models');

exports.obtenerMembresia = async (req, res) => {
  try {
    const membresias = await Membresia.findAll({
      //attributes: ['idMembresia', 'tipo', 'imagen']
      attributes: ['idMembresia', 'tipo']
    }); // todos las membresias de la base de datos
    res.json(membresias); // membresias en formato JSON
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Error al obtener las membresias' });
  }
};