# Homework 3
1. [Ген, для анализа](https://trace.ncbi.nlm.nih.gov/Traces/?view=run_browser&acc=SRR24502286&display=download)
2. Скрипт c алгоритмом лежит в папке bash_script
3. Результат работы flagstat
    ```bash
    15644 + 0 in total (QC-passed reads + QC-failed reads)
    13760 + 0 primary
    1269 + 0 secondary
    615 + 0 supplementary
    0 + 0 duplicates
    0 + 0 primary duplicates
    14907 + 0 mapped (95.29% : N/A)
    13023 + 0 primary mapped (94.64% : N/A)
    0 + 0 paired in sequencing
    0 + 0 read1
    0 + 0 read2
    0 + 0 properly paired (N/A : N/A)
    0 + 0 with itself and mate mapped
    0 + 0 singletons (N/A : N/A)
    0 + 0 with mate mapped to a different chr
    0 + 0 with mate mapped to a different chr (mapQ>=5)
    ```
4. скрипт с рабором файла с результатами находится в файле "script.sh"
6. для установки фреймворка в терминале наберите "sudo apt install make"
7. тестовый пайплайн находится в папке "test_makefile". который нас просто поприветствует)
8. лог файл и результат работы находится в папке "bash_script" и называются "build.log" и "output.vcf" соответсвенно. (чтобы его получить нужно запустить "make &> build.log") 
9. для визуализации пайплайна был использован makefile2dot (для установки постребуется питон. запускаем команду "pip install makefile2dot", после этого запускаем "makefile2dot | dot -Tpng > out.png". это наша визуализация пайплайна)
10. код пайплайна находится в папке с заданием, где мы сейчас находимся. "makefile"
11. результат работы пайплайна находится в файле "output.vcf", "flagstat.txt".
12. лог-файл пайплайна - "build.log".
13. визуализация пайплайна находится в файле "out.png".
14. В пайплайне добавлена параллелизация для fastqc & minimap2.
