package za.co.mamamoney.ussdbackend.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import za.co.mamamoney.ussdbackend.persistence.model.ForeignCurrencyRates;

@Repository
public interface ForeignCurrencyRatesRepository extends JpaRepository<ForeignCurrencyRates, Long> {
    ForeignCurrencyRates findByBaseCurrency(final String baseCurrency);
}
