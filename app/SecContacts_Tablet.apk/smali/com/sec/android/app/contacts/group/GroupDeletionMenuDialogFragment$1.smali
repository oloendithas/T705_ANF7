.class Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "GroupDeletionMenuDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 87
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    iput-object p5, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401e3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "resId":I
    move-object v1, p2

    .line 96
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 98
    return-object p2
.end method
