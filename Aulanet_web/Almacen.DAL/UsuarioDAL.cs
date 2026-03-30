using Aulanet_web.Almacen.Entities;
using Aulanet_web.Contratos;
using System.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Aulanet_web.Almacen.DAL
{
    public class UsuarioDAL : IUsuarioDAL
    {
        string conexion = ConfigurationManager.ConnectionStrings["ConexionAulanet"].ConnectionString;

        public void RegistrarUsuario(Usuario usuario)
        {
            SqlConnection cn = new SqlConnection(conexion);

            SqlCommand cmd = new SqlCommand("sp_RegistrarUsuario", cn);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Nombre", usuario.Nombre);
            cmd.Parameters.AddWithValue("@ApellidoP", usuario.ApellidoP);
            cmd.Parameters.AddWithValue("@ApellidoM", usuario.ApellidoM);
            cmd.Parameters.AddWithValue("@Edad", usuario.Edad);
            cmd.Parameters.AddWithValue("@FechaNacimiento", usuario.FechaNacimiento);
            cmd.Parameters.AddWithValue("@Estado", usuario.Estado);
            cmd.Parameters.AddWithValue("@Municipio", usuario.Municipio);
            cmd.Parameters.AddWithValue("@Correo", usuario.Correo);
            cmd.Parameters.AddWithValue("@Passwords", usuario.Passwords);
            cmd.Parameters.AddWithValue("@ImagenPerfil", usuario.ImagenPerfil);
            cmd.Parameters.AddWithValue("@IdiomaSeleccionado", usuario.IdiomaSeleccionado);

            cn.Open();
            int idGenerado = Convert.ToInt32(cmd.ExecuteScalar());
            usuario.IdUsuario = idGenerado;
            cn.Close();
        }

        public Usuario Login(string correo, string password)
        {
            Usuario usuario = null;

            SqlConnection cn = new SqlConnection(conexion);

            SqlCommand cmd = new SqlCommand("sp_LoginUsuario", cn);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Correo", correo);
            cmd.Parameters.AddWithValue("@Passwords", password);

            cn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                usuario = new Usuario();

                usuario.IdUsuario = Convert.ToInt32(dr["IdUsuario"]);
                usuario.Nombre = dr["Nombre"].ToString();
                usuario.Correo = dr["Correo"].ToString();
                usuario.ImagenPerfil = dr["ImagenPerfil"].ToString();
                usuario.IdiomaSeleccionado = dr["IdiomaSeleccionado"].ToString();
            }

            cn.Close();

            return usuario;
        }

        public void ActualizarUsuario(Usuario usuario)
        {
            try
            {
                SqlConnection cn = new SqlConnection(conexion);

                SqlCommand cmd = new SqlCommand("sp_ActualizarUsuario", cn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IdUsuario", usuario.IdUsuario);

                cmd.Parameters.AddWithValue("@Nombre", usuario.Nombre);
                cmd.Parameters.AddWithValue("@ApellidoP", usuario.ApellidoP);
                cmd.Parameters.AddWithValue("@ApellidoM", usuario.ApellidoM);
                cmd.Parameters.AddWithValue("@Edad", usuario.Edad);
                cmd.Parameters.AddWithValue("@FechaNacimiento", usuario.FechaNacimiento);
                cmd.Parameters.AddWithValue("@Estado", usuario.Estado);
                cmd.Parameters.AddWithValue("@Municipio", usuario.Municipio);
                cmd.Parameters.AddWithValue("@Correo", usuario.Correo);
                cmd.Parameters.AddWithValue("@Passwords", usuario.Passwords);
                cmd.Parameters.AddWithValue("@ImagenPerfil", usuario.ImagenPerfil);
                cmd.Parameters.AddWithValue("@IdiomaSeleccionado", usuario.IdiomaSeleccionado);

                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error de conexión: " + ex.ToString());
            }
        }
    }
}