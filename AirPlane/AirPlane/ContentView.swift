//
//  ContentView.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/22/23.
//

import SwiftUI
import CoreData
import PhotosUI
enum DataType: String, CaseIterable, Identifiable {
    case image, video, document
    var id: Self {self}
}
struct ContentView: View {
    @State private var selectedDataType: DataType = .image
    @State var selectedItems: [PhotosPickerItem] = []
    @State private var filePresented: Bool = false
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
    
            List{
                Picker("Content", selection: $selectedDataType) {
                    Text("Image").tag(DataType.image)
                    Text("Video").tag(DataType.video)
                    Text("Document").tag(DataType.document)
                }
                PhotosPicker(selection: $selectedItems) {
                    Text("Import from Camera")
                }
                .fileImporter(isPresented: $filePresented, allowedContentTypes: [UTType.video, UTType.image, UTType.application, UTType.calendarEvent, UTType.commaSeparatedText, UTType.folder]) { result in
                    switch result {
                    case .success(let data):
                        print(data)
                    case .failure(let error):
                        print("An error has occured \(error)")
                    }
                }
                Button("Import File") {
                    filePresented = true
                }
                Button("Transfer Content") {
                    print("transfer \(selectedDataType)")
                }
                Button("Retrieve Content") {
                    print("retrieve \(selectedDataType)")
                }
            DisplayerView()
        }
        
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
