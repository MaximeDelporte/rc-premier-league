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
        
        HStack {
            ZStack {
                Image(team.imageName)
                    .resizable()
                    .padding(.vertical, 6)
                    .padding(.horizontal, 6)
            }
            .background(.white)
            .frame(width: imageSize, height: imageSize)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(foregroundColor, lineWidth: 1)
            )
            .padding(.leading, 8)
            
            Text("\(rank)")
                .font(.subheadline)
                .fontWeight(.medium)
                .fontWeight(.bold)
                .frame(width: 34)
                .padding(.leading, 6)
                .foregroundColor(foregroundColor)
            
            Text(team.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(.leading, 8)
                .foregroundColor(foregroundColor)
            
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
}

#Preview {
    let teamIndex = 0
    let team = TeamHelper.allTeams[teamIndex]
    let rank = teamIndex + 1
    return TeamListItemView(rank: rank, team: team)
}
