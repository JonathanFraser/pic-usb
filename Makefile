all:
	$(MAKE) -C pc/ all
	$(MAKE) -C pic/ all
		
clean:
	$(MAKE) -C pc/ clean
	$(MAKE) -C pic/ clean
