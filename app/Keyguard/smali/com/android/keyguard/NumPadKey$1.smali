.class Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_26

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget v1, v1, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    if-lez v1, :cond_26

    .line 50
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget v2, v2, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_26

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_26

    .line 52
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "v":Landroid/view/View;
    iput-object v0, v1, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    .line 57
    :cond_26
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v1, v1, Lcom/android/keyguard/NumPadKey;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget v2, v2, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 60
    :cond_45
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v1}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    .line 61
    return-void
.end method
