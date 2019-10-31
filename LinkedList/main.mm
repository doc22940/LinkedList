//
//  main.cpp
//  LinkedList
//
//  Created by Swapnanil Dhol on 10/29/19.
//  Copyright © 2019 Swapnanil Dhol. All rights reserved.
//

#include <iostream>
#include <stdlib.h>
using namespace std;

struct Node
{
    int data;
    struct Node *next;
};

struct Node *head = NULL;



void append(int data)
{
     struct Node* temp = (struct Node*) malloc(sizeof(struct Node));
      temp->data = data;
      temp->next = NULL;
    
    if (head==NULL)///The List is empty
    {
        head = temp;
    }
    else
    {
        struct Node *l = head;
        for(l=head; l->next!=NULL; l=l->next);
        l->next = temp;
        
    }
}

void insertAfter(int key, int data)
{
    int flag = -1;
    
    struct Node* temp = (struct Node*) malloc(sizeof(struct Node));
    temp->data = data;
    
    if (head==NULL)
    {
        //The List is empty
        cout<<"The List is empty and thus element "<<data<<" cannot be inserted"<<endl;
        
    }
    else
    {
        struct Node* l = head;
        for(l=head;l->next != NULL; l=l->next)
        {
            if (l->data == key)
            {
                temp->next = l->next;
                l->next = temp;
                flag = 0;
            }
        }
        
        if (flag==-1)
        {
            cout<<"Element not found. Therefore "<<data<<" not inserted";
        }
    }
    
}

void insertAtBeginningWith(int data)
{
    struct Node* temp = (struct Node*) malloc(sizeof(struct Node));
    temp->data = data;
    
    if (head==NULL) {
        
        temp->next = NULL;
        head = temp;
    }
    else
    {
        temp->next = head;
        head = temp;
        free (temp);
    }
}

void display()
{
    if(head==NULL)
    {
        cout<<"Linked List is Empty"<<endl;
    }
    else
    {
        struct Node *l = head;
        for(l=head; l->next!=NULL; l=l->next)
        {
            cout<<"->"<<l->data;
        }
        cout<<"->"<<l->data;
    }
    cout<<endl;
}

int main() {
    
    display();
    append(6);
    append(7);
    append(8);
    append(9);
    insertAfter(33, 10);
    insertAtBeginningWith(5);
    insertAtBeginningWith(6);
    display();
    
    return 0;
}
