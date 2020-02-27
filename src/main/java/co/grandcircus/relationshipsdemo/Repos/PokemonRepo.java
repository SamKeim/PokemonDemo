package co.grandcircus.relationshipsdemo.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.relationshipsdemo.Entities.Pokemon;

public interface PokemonRepo extends JpaRepository<Pokemon, Long> {

	// add custom methods here
	
}
