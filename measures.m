nSimu = 10 ;
simu_time = 0. ;
worst_time = 0 ;
best_time = 5000 ;

for simu = 1:nSimu
    disp(['Simulation ' num2str(simu) '/' num2str(nSimu)]) ;
    Main ;
    this_simu_time = iteration*r.time_step ;
    simu_time = simu_time + this_simu_time ;
    if (this_simu_time < best_time)
        best_time = this_simu_time ;
    end
    if (this_simu_time > worst_time)
        worst_time = this_simu_time ;
    end
    disp(['    Simulation ' num2str(simu) ' : ' num2str(this_simu_time) ' secondes']) ;
    disp(['    Total time : ' num2str(simu_time)]) ;

end

avg_time = simu_time / nSimu ;
disp(['Temps moyen pour détruire la cible : ' num2str(avg_time) ' secondes']) ;
disp(['Meilleur temps : ' num2str(best_time) ' s']) ;
disp(['Pire temps     : ' num2str(worst_time) ' s']) ;
