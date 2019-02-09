<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Daftar_karyawan extends CI_Controller {

	public function __construct() {
		parent::__construct();

		$this->simple_login->cek_login(1);
		$this->load->model('m_users');
	}

	public function compose_view($main_view, $data)
	{
		$this->load->view('pimpinan/header', $data);
		$this->load->view($main_view, $data);
		$this->load->view('pimpinan/footer');
	}

	public function index()
	{
		$data['title'] = "Daftar Karyawan";
		$data['active'] = "Daftar Karyawan";

		$jabatan = $this->session->userdata('jabatan');

		if($jabatan == 'Manajer Pemasaran' || $jabatan == 'Supervisor ADK' || $jabatan == 'Supervisor Pely Intern' || $jabatan == 'Supervisor Pely Kas' || $jabatan == 'Supervisor Adm Unit') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_pimpinan($this->session->userdata('id_pimpinan'));
			$data['bos'] = 1;
		}elseif($jabatan == 'Manajer Operasional') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_byjb2('AMPB', 'AMO');
		}elseif($jabatan == 'AMPB') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_byjb2('Supervisor ADK', 'Supervisor Pely Intern');
		}elseif($jabatan == 'AMO') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_byjb1('Supervisor Pely Kas');
		}elseif($jabatan == 'Manajer Bisnis Mikro') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_byjb1('AMBM');
		}elseif($jabatan == 'AMBM') {
			$data['daftar_karyawan'] = $this->m_users->ambil_karyawan_byjb2('Supervisor Adm Unit', 'Penilik');
		}
		
		$this->compose_view('pimpinan/daftar_karyawan', $data);
	}

	public function tambah_karyawan()
	{
		$data['title'] = "Tambah Karyawan";
		$data['active'] = "Daftar Karyawan";

		$this->compose_view('pimpinan/tambah_karyawan', $data);
	}

	public function tambah_karyawan_form() {
		$data = array(
			'username' => $this->input->post('username'),
			'password' => md5($this->input->post('password')),
			'level' => 2
		);

		$id_users = $this->m_users->tambah_users($data);

		$data = array(
			'id_users' => $id_users,
			'id_divisi' => $this->session->userdata('id_divisi'),
			'id_pimpinan' => $this->session->userdata('id_pimpinan'),
			'nama_karyawan' => $this->input->post('nama_karyawan'),
			'jabatan' => $this->input->post('jabatan'),
			'umur' => $this->input->post('umur'),
			'alamat' => $this->input->post('alamat'),
			'no_hp' => $this->input->post('no_hp'),
			'sma' => $this->input->post('sma'),
			's1' => $this->input->post('s1'),
			's2' => $this->input->post('s2'),
			's3' => $this->input->post('s3'),
			'tanggal_masuk' => $this->input->post('tanggal_masuk')
		);

		$this->m_users->tambah_karyawan($data);
		$this->session->set_flashdata('hasil','<div class="alert alert-success text-center">Data Karyawan Berhasil Ditambahkan!</div>');

		redirect('daftar_karyawan');
	}

	public function hapus_karyawan($id_users)
	{
		$this->m_users->hapus_users($id_users);
		$this->session->set_flashdata('hasil','<div class="alert alert-success text-center">Data Karyawan Berhasil Dihapus!</div>');

		redirect('daftar_karyawan');
	}
}
