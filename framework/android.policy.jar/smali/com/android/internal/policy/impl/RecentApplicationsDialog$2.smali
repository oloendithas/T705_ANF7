.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;
.super Ljava/lang/Object;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 126
    if-nez p2, :cond_7

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    :goto_6
    return-void

    .line 129
    :cond_7
    const v0, 0x1080571

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6
.end method
