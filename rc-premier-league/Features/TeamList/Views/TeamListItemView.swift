//
//  TeamListItemView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct TeamListItemView: View {
    
    var rank: Int
    var team: Team
    
    private let imageSize: CGFloat = 60
    
    var body: some View {
        let foregroundColor = getForegroundColor(for: rank) ?? .primary
        let rankText = getRankText(for: rank)
        
        HStack {
            ZStack {
                Image(team.imageName)
                    .resizable()
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
            }
            .background(.white)
            .frame(width: imageSize, height: imageSize)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(foregroundColor, lineWidth: 1)
            )
            
            Text(rankText)
                .font(.subheadline)
                .fontWeight(.medium)
                .fontWeight(.bold)
                .frame(width: 34)
                .padding(.leading, 6)
            
            Text(team.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(.leading, 8)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
    
    private func getForegroundColor(for rank: Int) -> Color? {
        switch rank {
        case 1: return Color(.gold)
        case 2: return Color(.silver)
        case 3: return Color(.bronze)
        default: return nil
        }
    }
    
    private func getRankText(for rank: Int) -> String {
        switch rank {
        case 1: return "🥇"
        case 2: return "🥈"
        case 3: return "🥉"
        default: return "\(rank)"
        }
    }
}

#Preview {
    let teamIndex = 0
    let team = TeamHelper.allTeams[teamIndex]
    let rank = teamIndex + 1
    return TeamListItemView(rank: rank, team: team)
}
