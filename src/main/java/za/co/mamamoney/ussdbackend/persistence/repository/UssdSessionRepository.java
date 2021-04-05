package za.co.mamamoney.ussdbackend.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import za.co.mamamoney.ussdbackend.persistence.model.UssdSession;

import java.util.Optional;

@Repository
public interface UssdSessionRepository extends JpaRepository<UssdSession, Long> {

    Optional<UssdSession> findBySessionId(String sessionId);
}
