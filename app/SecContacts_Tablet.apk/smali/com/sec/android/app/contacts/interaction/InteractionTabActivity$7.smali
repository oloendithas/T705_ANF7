.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$7;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    .line 1311
    return-void
.end method
