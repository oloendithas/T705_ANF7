.class Lcom/nuance/connect/internal/DocumentServiceInternal$1;
.super Ljava/lang/Object;
.source "DocumentServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/LocaleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DocumentServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocaleChange(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    iput-object p1, v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->currentLocale:Ljava/util/Locale;

    .line 63
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;->this$0:Lcom/nuance/connect/internal/DocumentServiceInternal;

    # invokes: Lcom/nuance/connect/internal/DocumentServiceInternal;->addApkDocumentsForLocale(Ljava/util/Locale;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Ljava/util/Locale;)V

    .line 65
    :cond_0
    return-void
.end method
