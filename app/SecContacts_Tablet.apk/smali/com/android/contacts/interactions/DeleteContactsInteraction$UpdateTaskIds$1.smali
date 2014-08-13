.class Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$1;
.super Landroid/app/ProgressDialog;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$1;->this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    return v0
.end method
