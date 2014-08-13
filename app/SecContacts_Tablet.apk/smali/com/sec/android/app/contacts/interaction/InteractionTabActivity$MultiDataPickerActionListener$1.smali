.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->onPickContactAction(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;)V
    .locals 0

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2088
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const v2, 0x7f0e041f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2091
    .local v0, "t":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2092
    const v1, -0x41333333

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toast;->setMargin(FF)V

    .line 2093
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2094
    return-void
.end method
