import React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import { globalStyles } from '../styles/global';

import Card from '../shared/card';

export default function ReviewDetails({ route, navigation }) {
    return (
        <View style={globalStyles.container}>
            <Card>
                <Text>{ route.params.playerid }</Text>
                <Text>{ route.params.gameid } </Text>
                <Text>{ route.params.emailaddress }</Text>
                <Text>{ route.params.name }</Text>
            </Card>
        </View>
    );
}
