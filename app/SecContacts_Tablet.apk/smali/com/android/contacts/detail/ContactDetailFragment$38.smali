.class Lcom/android/contacts/detail/ContactDetailFragment$38;
.super Landroid/widget/ArrayAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/String;

    .prologue
    .line 3511
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$38;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p5, p0, Lcom/android/contacts/detail/ContactDetailFragment$38;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3515
    if-nez p2, :cond_0

    .line 3516
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$38;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401e5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3520
    :cond_0
    const v4, 0x7f09043f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3521
    .local v2, "simName":Landroid/widget/TextView;
    const v4, 0x7f09043e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3523
    .local v1, "simIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3524
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$38;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(Ljava/lang/String;)I

    move-result v0

    .line 3526
    .local v0, "iconRes":I
    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3532
    const v4, 0x7f0e03f4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3543
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3545
    return-object p2

    .line 3540
    :cond_1
    const v4, 0x7f0e03f6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
