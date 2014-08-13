.class Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;
.super Ljava/lang/Object;
.source "RingtoneRecommendationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 234
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$400(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$300(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;->onSelected(Landroid/net/Uri;)V

    .line 240
    return-void

    .line 237
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$400(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "highlight_offset"

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mOffset:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$500(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method
