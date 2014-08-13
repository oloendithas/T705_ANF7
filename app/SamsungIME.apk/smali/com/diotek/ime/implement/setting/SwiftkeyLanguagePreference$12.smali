.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;
.super Ljava/lang/Thread;
.source "SwiftkeyLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->cancelDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/util/LanguagePack;->resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 1080
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$12;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->cancelDownload()V

    .line 1081
    return-void
.end method
