import { StatusBar } from 'expo-status-bar';
import React, { useState } from 'react';
import { StyleSheet, Text, View, Button, TextInput, FlatList } from 'react-native';

export default function App() {
  const [birthdays, setBirthdays] = useState( [] );
  const [name, setName] = useState('kvlinden');
  const [age, setAge] = useState('0');

  const clickHandler = () => {
    var newAge= 0;
    if (birthdays && birthdays.length) {
      newAge= birthdays.length + 1;
    } else {
      newAge= 1;
    }

    setBirthdays( birthdays.concat({key: newAge.toString()}));
    setAge(newAge);
  }

  return (
    <View style={styles.container}>

      <Text>Enter name:</Text>
      <TextInput style={styles.input} 
      placeholder= 'e.g. John Doe'
      onChangeText= { (val) => setName(val)} />


      <Text>{name} is {age} years old</Text>

      <View style={styles.buttonContainer}>
        <Button title= 'Birthday Time!' onPress={clickHandler}/>
      </View>

      <FlatList 
          data= {birthdays}
          renderItem={ ({ item }) => (
            <Text style={styles.item}>{item.key}</Text>
          )}
        />

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  buttonContainer: {
    marginTop: 20
  },
  input: {
    borderWidth: 1,
    BorderColor: '#777',
    padding: 8,
    margin: 10,
    width: 200,
  },
  item: {
    marginTop: 24,
    padding: 30,
    backgroundColor: '#33FFE6',
    fontSize: 24,
    marginHorizontal: 10,
    marginTop: 24
  }
});
