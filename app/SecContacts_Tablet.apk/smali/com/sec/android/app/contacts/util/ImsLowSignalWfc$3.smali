.class Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$3;
.super Ljava/lang/Object;
.source "ImsLowSignalWfc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$3;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$3;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->dismissDialog()V

    .line 99
    return-void
.end method
