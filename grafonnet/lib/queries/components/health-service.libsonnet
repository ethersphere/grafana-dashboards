{
bee_salud_batch_commitment:{query:"bee_salud_batch_commitment{%(selector)s}",legend:"{{instance}}"},
bee_salud_dur:{query:"bee_salud_dur{%(selector)s}",legend:"{{instance}}"},
bee_salud_neighborhood_radius:{query:"bee_salud_neighborhood_radius{%(selector)s}",legend:"{{instance}}"},
bee_salud_network_radius:{query:"bee_salud_network_radius{%(selector)s}",legend:"{{instance}}"},
bee_salud_pconns:{query:"bee_salud_pconns{%(selector)s}",legend:"{{instance}}"},
bee_salud_pdur:{query:"bee_salud_pdur{%(selector)s}",legend:"{{instance}}"},
increase_bee_salud_healthy:{query:"increase(bee_salud_healthy{%(selector)s}[$interval])/(increase(bee_salud_unhealthy{%(selector)s}[$interval])+increase(bee_salud_healthy{%(selector)s}[$interval]))",legend:"{{instance}}"},
}
