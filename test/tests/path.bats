load test_helper.bash

EXPECTED=$(cat <<EOF
Global
File: src\empty.c
File: src\paths.c
	Function: main
		Number of paths through the function: 1
	Function: path_001_expected_1
		Number of paths through the function: 1
	Function: path_002_expected_2
		Number of paths through the function: 2
	Function: path_003_expected_4
		Number of paths through the function: 4
	Function: path_004_expected_3
		Number of paths through the function: 3
	Function: path_005_expected_4
		Number of paths through the function: 4
	Function: path_006_expected_5
		Number of paths through the function: 5
	Function: path_007_expected_6
		Number of paths through the function: 6
	Function: path_008_expected_8
		Number of paths through the function: 8
	Function: path_009_expected_4
		Number of paths through the function: 4
	Function: path_010_expected_3
		Number of paths through the function: 3
	Function: path_011_expected_6
		Number of paths through the function: 6
	Function: path_012_expected_5
		Number of paths through the function: 5
	Function: path_013_expected_5
		Number of paths through the function: 5
	Function: path_014_expected_4
		Number of paths through the function: 4
	Function: path_015_expected_3
		Number of paths through the function: 3
	Function: path_016_expected_8
		Number of paths through the function: 8
	Function: path_017_expected_5
		Number of paths through the function: 5
	Function: path_018_expected_7
		Number of paths through the function: 7
	Function: path_019_expected_4
		Number of paths through the function: 4
	Function: path_020_expected_7
		Number of paths through the function: 7
	Function: path_021_expected_7
		Number of paths through the function: 7
	Function: path_022_expected_10
		Number of paths through the function: 10
	Function: path_023_expected_3
		Number of paths through the function: 3
	Function: path_024_expected_5
		Number of paths through the function: 5
	Function: path_025_expected_5
		Number of paths through the function: 5
	Function: path_026_expected_9
		Number of paths through the function: 9
	Function: path_027_expected_24
		Number of paths through the function: 24
EOF
)

@test "Path counting" {
  run $CCSM $TEST_SOURCE_DIR/paths.c  $TEST_SOURCE_DIR/empty.c --output-metrics=HIS_PATH --
  assert_success
  assert_ccsm_output "$EXPECTED"
}