import React, { useState } from 'react';
import { StyleSheet, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';

export default function Home({ navigation }) {
    const [reviews, setReviews] = useState([
        { title: 'Metro: Last Light', rating: 5, body: 'Tunnel Russian got some redemption here', key: '1'},
        { title: 'S.T.A.L.K.E.R. Anomaly', rating: 4, body: 'Cheeki Breeki iv Damke!', key: '2'},
        { title: 'Death Stranding', rating: 3, body: 'Starring the second most dangerous mailman in video games', key: '3'},
        { title: 'Fallout: New Vegas', rating: 2, body: 'Starring the most dangerous mailman in video games', key: '4'},
        { title: 'Final Fantasy XV', rating: 1, body: 'Theres actually twice as many FF games...', key: '5'}

    ]);

    return (
        <View style={globalStyles.container}>
            <FlatList data={reviews} renderItem={({ item }) => (
                <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                    <Text style={globalStyles.titleText}>{ item.title }</Text>
                </TouchableOpacity>
            )} />
        </View>
    );
}
