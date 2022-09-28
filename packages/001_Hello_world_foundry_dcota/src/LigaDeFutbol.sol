// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract LigaDeFutbol {

    event JuegoCreado(bytes32 indexed id, uint64 indexed fechaDelJuego, string casa, string visitante);

    struct Equipo {
        bytes32 nombre;
        uint256 totalApuestasEquipo;
    }

    struct Juego {
        uint64 fechaApuestasAbiertas;
        uint64 fechaApuestasCerradas;
        uint64 fechaDelJuego;
        bytes32 ganador;
        Equipo casa;
        Equipo visitante;
        Estatus estado;
    }

    enum Estatus {
        Creado, 
        ApuestasAbiertas,
        ApuestasCerradas,
        JuegoPendiente,
        Terminado
    }

    address public monedaDeApuesta;

    // id => Juego
    mapping (bytes32 => Juego) public juegos;

    // id => nombre del equipo en bytes32 => address apostador => cantidad
    mapping(bytes32 => mapping(bytes32 => mapping(address => uint256))) public apuestas;

    function crearJuego(uint64 fechaApuestasAbiertas, uint64 fechaApuestasCerradas, uint64 fechaDelJuego, string memory casa, string memory visitante) public {
        bytes32 _casa;
        bytes32 _visitante;

        // solhint-disable-next-line no-inline-assembly
        assembly {
            _casa := mload(add(casa, 32))
            _visitante := mload(add(visitante, 32))
        }
        Equipo memory _Ecasa = Equipo({
            nombre: _casa,
            totalApuestasEquipo: 0
        });
        Equipo memory _Evisitante = Equipo({
            nombre: _visitante,
            totalApuestasEquipo: 0
        });
        Juego memory _juego = Juego({
            fechaApuestasAbiertas: fechaApuestasAbiertas,
            fechaApuestasCerradas: fechaApuestasCerradas,
            fechaDelJuego: fechaDelJuego,
            ganador: 0x00,
            casa: _Ecasa,
            visitante: _Evisitante,
            estado: Estatus.Creado
        });
        bytes32 id = _crearId(_juego);
        juegos[id] = _juego;
        emit JuegoCreado(id, fechaDelJuego, casa, visitante);
    }

    function apostar(uint256 cantidad, bytes32 juegoId) public {
        // TODO
    }

    function _crearId(Juego memory juego) internal pure returns(bytes32 id) {
        return keccak256(abi.encode(juego));
    }
}
