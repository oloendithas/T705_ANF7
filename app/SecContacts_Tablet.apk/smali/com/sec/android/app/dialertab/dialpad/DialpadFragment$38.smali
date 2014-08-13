.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$38;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onCreateSimSelectDialog()V
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/String;

    .prologue
    .line 11380
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$38;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$38;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "simSelectView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 11384
    if-nez p2, :cond_0

    .line 11385
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$38;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0401e5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 11389
    :cond_0
    const v2, 0x7f09043f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11390
    .local v1, "simName":Landroid/widget/TextView;
    const v2, 0x7f09043e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11392
    .local v0, "simIcon":Landroid/widget/ImageView;
    if-nez p1, :cond_2

    .line 11393
    const v2, 0x7f0e03f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11394
    const-string v2, "number_of_select_icon_is_9"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11395
    const v2, 0x7f0202ba

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11406
    :goto_0
    return-object p2

    .line 11397
    :cond_1
    const v2, 0x7f0202a6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 11399
    :cond_2
    const v2, 0x7f0e03f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 11400
    const-string v2, "number_of_select_icon_is_9"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11401
    const v2, 0x7f0202bc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 11403
    :cond_3
    const v2, 0x7f0202ab

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
