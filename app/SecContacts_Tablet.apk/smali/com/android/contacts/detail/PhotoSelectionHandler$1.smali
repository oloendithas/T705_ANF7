.class Lcom/android/contacts/detail/PhotoSelectionHandler$1;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

.field final synthetic val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$1;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$1;->val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$1;->val$listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelectionDismissed()V

    .line 129
    return-void
.end method
