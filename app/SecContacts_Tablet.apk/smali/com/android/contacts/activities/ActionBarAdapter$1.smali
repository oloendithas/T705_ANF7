.class Lcom/android/contacts/activities/ActionBarAdapter$1;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$1;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$000(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(I)V

    .line 404
    return-void
.end method
