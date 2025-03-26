import 'package:flutter/material.dart';

Widget BareSearch() {
  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Rechercher...",
                          prefixIcon: Icon(Icons.search,
                              color: Colors.grey),
                          border: InputBorder
                              .none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12),
                        ),
                      ),
                    ),
                  );       
}