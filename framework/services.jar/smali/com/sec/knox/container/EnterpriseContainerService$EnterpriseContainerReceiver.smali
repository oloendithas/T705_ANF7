.class Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseContainerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 956
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<<< Intent action is >>> : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<<< Intent data is   >>> : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 961
    :cond_0
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Inside package added listener"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 963
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 964
    .local v12, "packageName":Ljava/lang/String;
    :goto_0
    const-string v17, "com.samsung.redexmobile"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 965
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Binding again , it matches"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1133
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 963
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 969
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 974
    const-string/jumbo v17, "username"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 975
    .local v16, "userName":Ljava/lang/String;
    const-string v17, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "domain":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 982
    .local v14, "strAction":Ljava/lang/String;
    const/4 v4, -0x1

    .line 984
    .local v4, "containerId":I
    :try_start_0
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "sec_container_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string/jumbo v17, "sec_container_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 987
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Given containerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 998
    :goto_2
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account added in Email app with username -"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and domain-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z
    invoke-static {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I
    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$600()I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v0, v4, v1, v5, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    .line 1004
    .local v13, "status":Z
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Emailid update status :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 988
    .end local v13    # "status":Z
    :catch_0
    move-exception v6

    .line 989
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId IndexOutOfBoundsException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 993
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v6

    .line 994
    .local v6, "e":Ljava/lang/Exception;
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId generic exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1028
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Container doesn\'t exist..no action"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1031
    .end local v4    # "containerId":I
    .end local v5    # "domain":Ljava/lang/String;
    .end local v14    # "strAction":Ljava/lang/String;
    .end local v16    # "userName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1033
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Intent INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION received"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1035
    .restart local v4    # "containerId":I
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1036
    .local v9, "map":Landroid/os/Bundle;
    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0xf

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1039
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1040
    .end local v4    # "containerId":I
    .end local v9    # "map":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.sec.knox.container.INTENT_ALARM_UNMOUNT_TIMEOUT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1042
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Intent INTENT_ACTION_UNMOUNT_TIMEOUT_NOTIFICATION received"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1044
    .restart local v4    # "containerId":I
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1045
    .restart local v9    # "map":Landroid/os/Bundle;
    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1048
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1049
    .end local v4    # "containerId":I
    .end local v9    # "map":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1052
    const-string v17, "EnterpriseContainerService"

    const-string v18, "received ACTION_EXPIRED_PASSWORD_NOTIFICATION from alarm manager"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v17, "containerid"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1054
    .restart local v4    # "containerId":I
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1055
    .restart local v9    # "map":Landroid/os/Bundle;
    const-string v17, "containerid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    const/16 v18, 0xe

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1058
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1060
    .end local v4    # "containerId":I
    .end local v9    # "map":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1065
    const-string/jumbo v17, "username"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1066
    .restart local v16    # "userName":Ljava/lang/String;
    const-string v17, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1072
    .restart local v5    # "domain":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 1073
    .restart local v14    # "strAction":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1075
    .restart local v4    # "containerId":I
    :try_start_1
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "sec_container_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v17, "sec_container_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 1078
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Given containerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1085
    :goto_3
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted in Email app with username- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and domain-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z
    invoke-static {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I
    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900()I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v0, v4, v1, v5, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    .line 1090
    .restart local v13    # "status":Z
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Emailid update status :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1079
    .end local v13    # "status":Z
    :catch_2
    move-exception v6

    .line 1080
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "N/A containerId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1081
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v6

    .line 1082
    .local v6, "e":Ljava/lang/Exception;
    const-string v17, "EnterpriseContainerService"

    const-string v18, "N/A containerId"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1092
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v17, "EnterpriseContainerService"

    const-string v18, "Container doesn\'t exist..no action"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1095
    .end local v4    # "containerId":I
    .end local v5    # "domain":Ljava/lang/String;
    .end local v14    # "strAction":Ljava/lang/String;
    .end local v16    # "userName":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.SCREEN_OFF"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers()Ljava/util/List;

    move-result-object v8

    .line 1099
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v8, :cond_c

    .line 1100
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container list: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1106
    .local v11, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v11, :cond_b

    .line 1107
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    .line 1108
    .restart local v4    # "containerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static/range {v17 .. v17}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerLockOnScreenLock(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1109
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container needs to be locked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v4, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;IZ)V

    goto :goto_4

    .line 1102
    .end local v4    # "containerId":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_c
    const-string v17, "EnterpriseContainerService"

    const-string v18, "ACTION_SCREEN_OFF container list is empty"

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1119
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1120
    .restart local v11    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v11, :cond_e

    .line 1121
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    .line 1122
    .restart local v4    # "containerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordVerifyOnlyOnModeChange(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1123
    const-string v17, "EnterpriseContainerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SCREEN_OFF container needs to be locked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->changeActiveContainerPasswordStatus(I)V

    goto :goto_5
.end method
