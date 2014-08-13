.class Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;
.super Landroid/widget/BaseAdapter;
.source "EmergencyMessageContactAddDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field items:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;Landroid/view/LayoutInflater;)V
    .locals 4

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    iput-object p2, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0321

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e042a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->items:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    .line 114
    if-eqz p2, :cond_0

    move-object v3, p2

    .line 117
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, "text1":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "text2":Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 121
    .local v0, "button":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->items:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-object v3

    .line 114
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401f2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method
