//
//  HomeView.swift
//  binaryconverter
//
//  Created by Paul Crews on 7/14/23.
//

import SwiftUI

struct HomeView: View {
    @State var decimal = ""
    @State var binaries = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
    @State var binary_output : [String] = []
    var body: some View {
        VStack{
            Text("Binary Converter")
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            HStack{
                TextField("Decimal", text: $decimal)
                    .keyboardType(.numberPad)
                    .onChange(of: decimal) { oldValue, newValue in
                        charCount(char: newValue)
                    }
                    
                Spacer()
                if decimal.count >= 1{
                    Button(action: {
                        conversion(num: decimal)
                    }, label: {
                        Text("Submit")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
                }
            }
            Spacer()
            Text("Output: 6\(binary_output.joined(separator: ""))")
                
        }
    }
    func charCount(char: String){
        let reg_val = char
        
        if reg_val.count >= 3 {
            decimal = String(reg_val.prefix(3))
        }
    }
    func conversion(num: String) {
        var stn = Int(num)
        var bin_output : [String] = []
        for b in binaries {
            print("stn: \(stn!) - -b: \(b) -- \(stn! - b)")
            if ((stn! - b) >= 0) {
                stn = stn! - b
                bin_output.append("1")
            } else {
                bin_output.append("0")
            }
        }
        print(bin_output)
        binary_output = bin_output
    }
}

#Preview {
    HomeView()
}
