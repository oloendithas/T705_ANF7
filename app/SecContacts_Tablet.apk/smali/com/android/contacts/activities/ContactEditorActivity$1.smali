.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$NamecardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNameCardEnabled(Z)V
    .locals 1
    .param p1, "isNameCard"    # Z

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # setter for: Lcom/android/contacts/activities/ContactEditorActivity;->mhasNameCaredInfo:Z
    invoke-static {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$002(Lcom/android/contacts/activities/ContactEditorActivity;Z)Z

    .line 455
    return-void
.end method
