import React, { useState, useEffect } from 'react';
import { StyleSheet, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function Home({ navigation }) {
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);

    useEffect(() => {
        fetch('https://desolate-fortress-44832.herokuapp.com/playergames')
        .then((response) => response.json())
        //.then((json) => console.log(json))
        .then((json) => setData(json))
        .catch((error) => console.error(error))
        .finally(() => setLoading(false));
    }, []);

    return (
        
        <View style={globalStyles.container}>
            <FlatList data={data}
            renderItem={({ item }) => (
                <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                    <Card>
                        <Text style={globalStyles.titleText}>{ item.emailaddress }</Text>
                    </Card>
                </TouchableOpacity>
            )} />
        </View>
    );
}
