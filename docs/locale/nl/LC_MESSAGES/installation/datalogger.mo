��          �      l      �  `   �  �   B  h   .     �     �  !   �  `   �  	   V  h   `  �   �     R  �   p  +     A   G  !   �  E   �  �   �  }   y  '   �         ?  V   _	  �   �	  h   �
           +  !   L  _   n  
   �  ~   �  �   X     �  �     0   �  K     )   T  ]   ~  �   �  }   j  =   �      &                                          
             	                                           Also, you should disable the datalogger process over there, since you won't be using it anyway:: Create a new file ``/home/dsmr/dsmr_datalogger_api_client.py`` with this content: `dsmr_datalogger_api_client.py on GitHub <https://github.com/dennissiemensma/dsmr-reader/blob/v3/dsmr_datalogger/scripts/dsmr_datalogger_api_client.py>`_ Create a new supervisor config in ``/etc/supervisor/conf.d/dsmr_remote_datalogger.conf`` with contents:: Datalogger instance: Script Datalogger instance: Supervisor Datalogger instance: installation Don't forget to insert your own API URL and API key as defined in ``API_SERVERS`` in the script. Execute:: If you make any changes to the script later, make sure to restart it with: ``sudo supervisorctl update`` If your smart meter only supports DSMR v2, make sure to change the DSMR version :doc:`in the datalogger settings <../admin/datalogger>`. Installation: Datalogger only Make sure to prepare the API at the DSMR-reader instance you'll forward the telegrams to. For more information configuring it, :doc:`see the API settings <../admin/api>`. Receiving DSMR-reader instance: preparation The device (or server) hosting the receiving DSMR-reader instance The device hosting the datalogger The script should now forward telegrams to the API URL you specified. The serial connection in the script above is based on ``DSMR v4/v5``. When required, change these in ``SERIAL_SETTINGS`` in the script. This will install a datalogger that will forward telegrams to another fully installed instance of DSMR-reader, using its API. To be clear, there should be two hosts: Update and run **Supervisor**:: Project-Id-Version: DSMR-reader
Report-Msgid-Bugs-To: 
Last-Translator: 
Language: nl
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
X-Generator: Poedit 2.0.6
 Verder kun je hier het datalogger proces uitschakelen, gezien die toch niet nodig is:: Maak een nieuw bestand ``/home/dsmr/dsmr_datalogger_api_client.py`` met deze inhoud: `dsmr_datalogger_api_client.py op GitHub <https://github.com/dennissiemensma/dsmr-reader/blob/v3/dsmr_datalogger/scripts/dsmr_datalogger_api_client.py>`_ Maak een nieuwe Supervisor-config in ``/etc/supervisor/conf.d/dsmr_remote_datalogger.conf`` met inhoud:: Datalogger-instantie: Script Datalogger-instantie: Supervisor Datalogger-instantie: installatie Vergeet niet om je eigen API URL en API key in te stellen in ``API_SERVERS`` binnen het script. Voer uit:: Mocht je later zelf wijzigingen doorvoeren in het script, vergeet deze dan niet te herladen met: ``sudo supervisorctl update`` Wanneer je slimme meter alleen DSMR v2 ondersteunt, zorg er dan voor dat je de DSMR-versie aanpast :doc:`in de datalogger-configuratie <../admin/datalogger>`. Installatie: Alleen datalogger Zorg ervoor dat je de API inschakelt in de instantie van DSMR-reader, waar je alle telegrammen naar doorstuurt. Voor meer informatie over de API, :doc:`zie de API-configuratie <../admin/api>`. Ontvangende DSMR-reader-instantie: voorbereiding Het apparaat (of server) waarop de ontvangende DSMR-reader-instantie draait Het apparaat waar de datalogger op draait Het script zou nu telegrammen moeten doorsturen naar de API URL die je eerder hebt ingevoerd. De seriele verbinding in bovenstaand script is gebaseerd op ``DSMR v4/v5``. Indien nodig, verander deze in ``SERIAL_SETTINGS`` in het script. Dit installeert een datalogger, die telegrammen doorstuurt naar een andere volledige installatie van DSMR-reader, via de API. Voor de duidelijkheid, er zouden twee omgevingen moeten zijn: Update en draai **Supervisor**:: 