package com.blastfurnace.otr.data.series;


import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blastfurnace.otr.AppConfigTest;

import static org.assertj.core.api.BDDAssertions.then;

/**
 * Integration Tests for Audio Services
 *
 * @author Jim Blackson
 */
public class SeriesDataApplicationTests extends AppConfigTest {
	
	private static final Logger log = LoggerFactory.getLogger(SeriesDataApplicationTests.class); 
	
	@Test
	/** Test Data Access for Audio file Properties. */
	public void shouldPerformSeriesDataRecordActions() throws Exception {
		log.info("Series Data Tests - Start");
		log.info("Series Data Tests - End");
	}
}
