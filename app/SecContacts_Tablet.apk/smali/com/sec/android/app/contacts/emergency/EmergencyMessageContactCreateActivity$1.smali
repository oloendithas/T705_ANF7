.class Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity$1;
.super Ljava/lang/Object;
.source "EmergencyMessageContactCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity$1;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 92
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity$1;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;

    # invokes: Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->setDoneButtonEnabled()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;->access$000(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    .line 84
    return-void
.end method
