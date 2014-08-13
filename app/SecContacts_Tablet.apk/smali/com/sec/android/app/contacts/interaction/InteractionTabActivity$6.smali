.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;
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
    .line 1298
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$6;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->doDoneAction()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    .line 1302
    return-void
.end method
