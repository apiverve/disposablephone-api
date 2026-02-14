declare module '@apiverve/disposablephone' {
  export interface disposablephoneOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface disposablephoneResponse {
    status: string;
    error: string | null;
    data: DisposablePhoneNumberCheckerData;
    code?: number;
  }


  interface DisposablePhoneNumberCheckerData {
      phone:        string;
      isDisposable: boolean;
      firstSeen:    Date;
  }

  export default class disposablephoneWrapper {
    constructor(options: disposablephoneOptions);

    execute(callback: (error: any, data: disposablephoneResponse | null) => void): Promise<disposablephoneResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: disposablephoneResponse | null) => void): Promise<disposablephoneResponse>;
    execute(query?: Record<string, any>): Promise<disposablephoneResponse>;
  }
}
