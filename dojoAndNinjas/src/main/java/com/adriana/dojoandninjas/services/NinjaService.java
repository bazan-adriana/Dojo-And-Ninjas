package com.adriana.dojoandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.adriana.dojoandninjas.models.Ninja;
import com.adriana.dojoandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	private static NinjaRepository ninjaRepo;

	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	public Ninja getOne(Long id) {
		Optional<Ninja> ninja = ninjaRepo.findById(id);
		return ninja.isPresent() ? ninja.get() : null;
	}
	
	public List<Ninja> getAll() {
		return (List<Ninja>) ninjaRepo.findAll();
	}
	
	public Ninja create(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public Ninja update(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public void delete(Long id) {
		ninjaRepo.deleteById(id);
	}

}
