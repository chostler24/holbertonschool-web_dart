int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int totalPointsTeamA = 0;
    int totalPointsTeamB = 0;

    // Calculate points for Team A
    totalPointsTeamA += teamA['freeThrow'] ?? 0;
    totalPointsTeamA += (teamA['2pointer'] ?? 0) * 2;
    totalPointsTeamA += (teamA['3pointer'] ?? 0) * 3;

    // Calculate points for Team B
    totalPointsTeamB += teamB['freeThrow'] ?? 0;
    totalPointsTeamB += (teamB['2pointer'] ?? 0) * 2;
    totalPointsTeamB += (teamB['3pointer'] ?? 0) * 3;

    // Compare the points and return the result
    if (totalPointsTeamA > totalPointsTeamB) {
        return 1;
    } else if (totalPointsTeamA < totalPointsTeamB) {
        return 2;
    } else {
        return 0;
    }
}
