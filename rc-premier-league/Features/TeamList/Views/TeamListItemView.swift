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
                Image(team.logoImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, team.logoIsRound ? 4 : 9)
                    .padding(.bottom, 4)
                    .padding(.horizontal, 4)
            }
            .frame(width: imageSize, height: imageSize)
            .background(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(foregroundColor, lineWidth: 1)
            )
            
            rankText
                .fontWeight(.medium)
                .frame(width: 34)
                .padding(.leading, 6)
            
            Text(team.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(.leading, 8)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func getForegroundColor(for rank: Int) -> Color? {
        switch rank {
        case 1: return Color(.gold)
        case 2: return Color(.silver)
        case 3: return Color(.bronze)
        default: return nil
        }
    }
    
    private func getRankText(for rank: Int) -> Text {
        let font = Font.system(size: 30)
        switch rank {
        case 1: return Text("🥇").font(font)
        case 2: return Text("🥈").font(font)
        case 3: return Text("🥉").font(font)
        default: return Text("\(rank)").font(.subheadline)
        }
    }
}

#Preview {
    let teamIndex = 1
    let team = TeamHelper.allTeams[teamIndex]
    let rank = teamIndex + 1
    return TeamListItemView(rank: rank, team: team)
}
